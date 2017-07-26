# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery(document).on 'turbolinks:load', ->
    comments = $('#comments')
    if comments.length > 0 
        App.global_chat = App.cable.subscriptions.create {
         channel: "BlogsChannel"
         blog_id: comments.data('blog-id')
        }, 
        connected: -> 
        disconntected: ->
        received: (data) ->
            comments.append data['comment']
        send_comment: (comment, blog_id) ->
            @perform 'send_comment', comment; comment, blog_id: blog_id
    $('#new_comment').submit (e) ->
        $this = $(this)
        textarea = $this.find('#comment_content')
        if $.trim(textarea.val()).length > 1 
            App.global_chat.send_comment textarea.val(),
            comments.data('blog-id')
            # Clears the text area after the user submits his/her comment.
            textarea.val('')
        # After you submit, default would redirect you to another page. Preventing default will keep you on the same page. 
        e.preventDefault()
        return false
        