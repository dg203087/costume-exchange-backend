class Api::V1::DirectUploadsController < ActiveStorage::DirectUploadsController
    skip_before_action :verify_authenticity_token

    def create
        byebug
        blob = ActiveStorage::Blob.create_before_direct_upload!(blob_args)
    end
 
end