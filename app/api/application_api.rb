require 'grape-swagger'

class ApplicationApi < Grape::API
  format :json
  mount V1::Api
  add_swagger_documentation(
    hide_format: true,
    doc_version: '0.0.1',
    info:{
        title: 'API',
        contact_name: 'Drew Lee',
        contact_email: 'skipmaple@gmail.com'
    }
  )
end
