function zzz -d "My package"
    # Точка входа пакета
    set i (contains -i -- -d $argv; or contains -i -- --dry-run $argv);echo $i

    if test -n "$i"
        set -e argv[$i]

        set dry_run 1
        set _get_flags $_get_flags -s
    end
    set -e i
end
