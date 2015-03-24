module ResumesHelper
	def get_image_url(id,filename)
		@s3 = AWS::S3.new(
			:access_key_id => ENV['AWS_ACCESS_KEY_ID'],
			:secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
		)
		object = @s3.buckets[ENV['AWS_BUCKET']].objects['resumes/resumes/000/000/'+ "%03d" % id+ '/fullsize/'+filename[0..-4]+"png"]
		@image_url = object.url_for(:get, {:expires => 30.minutes.from_now, :secure => true}).to_s;
		return @image_url
	end

	def get_thumbnail_url(id,filename)
		@s3 = AWS::S3.new(
			:access_key_id => ENV['AWS_ACCESS_KEY_ID'],
			:secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
		)
		object = @s3.buckets[ENV['AWS_BUCKET']].objects['resumes/resumes/000/000/'+ "%03d" % id+ '/thumbnail/'+filename[0..-4]+"png"]
		@image_url = object.url_for(:get, {:expires => 30.minutes.from_now, :secure => true}).to_s;
		return @image_url
	end
end
