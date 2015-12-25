require 'bcrypt'
class MybPadAccount < ActiveRecord::Base
    include BCrypt
    # Create two virtual (in memory only) attributes to hold the password and its confirmation.
    attr_accessor :new_password, :new_password_confirmation
    # We need to validate that the user has typed the same password twice
    # but we only want to do the validation if they've opted to change their password.
    validates_confirmation_of :new_password, :if=>:password_changed?

    before_save :hash_new_password

    # By default the form_helpers will set new_password to "",
    # we don't want to go saving this as a password
    def password_changed?
      !@new_password.blank?
    end

    private
    # This is where the real work is done, store the BCrypt has in the
    # database
    def hash_new_password
      self.Password = BCrypt::Password.create(@new_Password)
    end

end
