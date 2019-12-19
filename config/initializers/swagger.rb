GrapeSwaggerRails.options.url = '/swagger_doc'
GrapeSwaggerRails.options.before_action do
  GrapeSwaggerRails.options.app_url = request.protocol + request.host_with_port
end
GrapeSwaggerRails.options.app_name = 'Setraia API'
