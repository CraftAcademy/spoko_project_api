RSpec.describe 'POST /api/articles' do

  before do
    post '/api/articles', params: {
      article: { title: 'News about Spoko', body: 'We are the champions of the World' }
    }

    @article = Article.last
  
  end

  subject { response }

  it { is_expected.to have_http_status 201 }

  it 'is expected to create an instance of an Article' do
    expect(@article).not_to be nil
  end

  it 'is expected to have a title' do
    expect(@article.title).to eq 'News about Spoko'
  end

  it 'is expected to have a body' do
    expect(@article.body).to eq 'We are the champions of the World'
  end

end 