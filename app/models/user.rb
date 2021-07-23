class User < ApplicationRecord
    validates :email, uniqueness: true
    #validates :password, format: { with: /\A(?=.{6,10})(?=.*\d)(?=.*[[:^alnum:]])/x,
    #    message: "Senha com um mínimo de 6 e máximo de 10 caracteres contendo, pelo menos, um número e um caracter especial (! ? # ou *)" }
end
