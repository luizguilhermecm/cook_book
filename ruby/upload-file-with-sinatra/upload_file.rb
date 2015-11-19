require 'rubygems'
require 'sinatra'

class UploadFile< Sinatra::Base

    get '/' do
        puts "log: get /"
        erb :upload
    end

    get '/upload' do
        puts "log: get /upload"
        erb :upload
    end

    post "/upload" do
        puts "log: post /upload"
        # the uploads directory has to exist before the app runs
        File.open('uploads/' + params['my_file'][:filename], "w") do |f|
            f.write(params['my_file'][:tempfile].read)
        end
        return "The file was successfully uploaded!"
    end
    run! if app_file == $0
end
