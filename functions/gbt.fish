function gbt --description 'List git branches updated/created in the last 24 hours'
    git for-each-ref --sort=-committerdate --format='%(committerdate:iso8601) %(refname:short)' refs/heads/ | \
    while read -l date time zone branch
        set -l commit_time (date -j -f "%Y-%m-%d %H:%M:%S %z" "$date $time $zone" +%s 2>/dev/null)
        set -l now (date +%s)
        set -l diff (math $now - $commit_time)
        if test $diff -le 86400
            echo "$date $time $branch"
        end
    end
end
