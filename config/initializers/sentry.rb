Sentry.init do |config|
    config.dsn = 'https://ab218b8667684120adcad61404ad5012@o987049.ingest.sentry.io/5943842'

    # Set traces_sample_rate to 1.0 to capture 100%
    # of transactions for performance monitoring.
    # We recommend adjusting this value in production.
    config.traces_sample_rate = 0.5
    # or
    config.traces_sampler = lambda do |context|
        true
    end
end