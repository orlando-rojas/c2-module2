def anchorize(text)
    text.gsub(%r{(?:https?|ftps?|file|smb)://\S+}i, '<a href="\0">\0</a>')
end