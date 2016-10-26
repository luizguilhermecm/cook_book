require 'rubygems'
require 'sinatra'

class UploadFile< Sinatra::Base

    get '/' do
        puts "log: get /"
        redirect to('/upload')
    end

    get '/upload' do
        puts "log: get /upload"
        @list = list_uploaded_files
        erb :upload
    end

    post "/files/upload" do
        puts "log: post /upload"
        # the uploads directory has to exist before the app runs
        File.open('uploads/' + params['file'][:filename], "w") do |f|
            f.write(params['file'][:tempfile].read)
        end
        redirect to('/upload')
    end

    def list_uploaded_files
        files = Dir.glob("./uploads/*.*").map{|f| f.split('/').last}
        return files
    end

    get '/sinatra_log/:filename' do |filename|
        puts filename
        send_file "./uploads/#{filename}", :filename => filename, :type => 'Application/octet-stream'
    end


    run! if app_file == $0
end
