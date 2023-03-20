git = "git -C ~/.config/nvim/";
git_head_hash = os.execute("{git} rev-parse HEAD");
git_latest_hash = os.execute("{git} ls-remote origin main | cut -f1");

if git_head_hash ~= git_latest_hash then
    os.execute[[{git} remote update]];
    if os.execute("{git} stash") == "No local changes to save" then
        os.execute("{git} pull");
    end
end

