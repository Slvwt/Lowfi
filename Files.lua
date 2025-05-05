local Dirs = {"Lowfi, Inc", "Lowfi, Inc/Data", "Lowfi, Inc/Configs", "Lowfi, Inc/Data/Assets"}; do
    for I = 1, #Dirs do
        if not isfolder(Dirs[I]) then
            
            makefolder(Dirs[I])
        end
    end

    --→ Get Assets

    local Request = (http.request or request)

    if Request then
        local Reply = Request({ Url = "https://raw.githubusercontent.com/Slvwt/Lowfi/main/Droplet.png" })

        if Reply and Reply.Success and Reply.Body then
            
            writefile("Lowfi, Inc/Data/Assets/Droplet.png", Reply.Body)
        end
    end
end
