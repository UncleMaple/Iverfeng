class V1::Users < Grape::API
  resource :users do
    desc '获取全部用户' do
      summary '获取全部用户summary'
      detail '获取全部用户details'
    end
    get do
    end

    desc 'Return a status.'
    params do
      requires :id, type: Integer, desc: 'Status ID.'
    end
    route_param :id do
      get do
      end
    end

    desc 'Create a status.'
    params do
      requires :status, type: String, desc: 'Your status.'
    end
    post do
    end
  end
end
