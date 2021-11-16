class S3DownloadStrategy < CurlDownloadStrategy
  def _fetch(_options)
    ENV['AWS_DEFAULT_REGION'] = 'us-east-1'

    ohai "We'll try to use yak now.  You might be prompted to log in."
    exit_status = system(
      "#{HOMEBREW_PREFIX}/bin/yak \
      arn:aws:iam::915803415974:role/sso-dev-role \
      -- #{HOMEBREW_PREFIX}/bin/aws s3 cp #{@url} #{temporary_path}"
    )

    unless exit_status
      onoe <<-EOS
        Something went wrong!
        Try running `yak arn:aws:iam::915803415974:role/sso-dev-role true` to debug.
      EOS
    end
  end
end
