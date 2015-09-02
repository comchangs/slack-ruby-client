# This file was auto-generated by lib/slack/web/api/tasks/generate.rake

module Slack
  module Web
    module Api
      module Endpoints
        module Im
          #
          # This method closes a direct message channel.
          #
          # @option options [im] :channel
          #   Direct message channel to close.
          # @see https://api.slack.com/methods/im.close
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/im.close.json
          def im_close(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            post('im.close', options)
          end

          #
          # This method returns a portion of messages/events from the specified direct message channel.
          # To read the entire history for a direct message channel, call the method with no latest or
          # oldest arguments, and then continue paging using the instructions below.
          #
          # @option options [im] :channel
          #   Direct message channel to fetch history for.
          # @option options [timestamp] :latest
          #   End of time range of messages to include in results.
          # @option options [timestamp] :oldest
          #   Start of time range of messages to include in results.
          # @option options [Object] :inclusive
          #   Include messages with latest or oldest timestamp in results.
          # @see https://api.slack.com/methods/im.history
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/im.history.json
          def im_history(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            post('im.history', options)
          end

          #
          # This method returns a list of all im channels that the user has.
          #
          # @see https://api.slack.com/methods/im.list
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/im.list.json
          def im_list(options = {})
            post('im.list', options)
          end

          #
          # This method moves the read cursor in a direct message channel.
          #
          # @option options [im] :channel
          #   Direct message channel to set reading cursor in.
          # @option options [timestamp] :ts
          #   Timestamp of the most recently seen message.
          # @see https://api.slack.com/methods/im.mark
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/im.mark.json
          def im_mark(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            throw ArgumentError.new('Required arguments :ts missing') if options[:ts].nil?
            post('im.mark', options)
          end

          #
          # This method opens a direct message channel with another member of your Slack team.
          #
          # @option options [user] :user
          #   User to open a direct message channel with.
          # @see https://api.slack.com/methods/im.open
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/im.open.json
          def im_open(options = {})
            throw ArgumentError.new('Required arguments :user missing') if options[:user].nil?
            post('im.open', options)
          end
        end
      end
    end
  end
end
