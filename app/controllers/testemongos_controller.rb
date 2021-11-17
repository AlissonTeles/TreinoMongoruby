class TestemongosController < ApplicationController

    def login_new
    end

    def login_create
        testemongos123 = Testemongos123.find_by(params[:email][:password_digest])

        if testemongos123.authenticate(params[:password])

        else

        end
    end




private
# Only allow a list of trusted parameters through.
    def testemongos_params
        params.require(:testemongos123).permit(:user, :password, :email)
    end
end
