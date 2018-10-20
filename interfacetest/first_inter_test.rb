require 'net/http'
require 'json'

class FirstInterTest

  def myRequestGet
    uri=URI('http://127.0.0.1:12306/gettest')
    params={:param=>"blah",:name=>"ysh",:score=>"92"}
    uri.query=URI.encode_www_form(params)
    res=Net::HTTP.get_response(uri)
    if res.code=="200"
      puts "ok"
    else
      puts "fail"
    end
    puts res.body
  end

  def myRequestPost
    uri=URI('http://127.0.0.1:12306/itest')
    res = Net::HTTP.post_form(uri,"name"=>"foo")
    if res.code=="200"
      puts "ok"
    else
      puts "fail"
    end
    puts res.body
  end

  def myRequestPostJson
    uri=URI('http://127.0.0.1:12306/posttest')
    http=Net::HTTP.new(uri.host,uri.port)
    req=Net::HTTP::Post.new(uri.path,'Content-Type' => 'application/json')
    req.body={'title':'new post','content':'new post content'}.to_json
    res=http.request(req)
    puts res.body
    puts res.code
  end

end

f1=FirstInterTest.new
f1.myRequestPostJson