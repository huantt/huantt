<table>
    {{- range $i, $article := .Articles }}
        <tr>
            <td width="300px">
                <a href="{{$article.Url}}">
                    <img src="https://dynamic-thumbnail-dev-to-e8hh.vercel.app/article/{{ $article.Id }}/thumbnail?t={{ $.Time }}" alt="thumbnail">
                </a>
            </td>
            <td>
                <a href="{{ $article.Url }}">{{ truncateByWords $article.Title 10 }}</a>
                <div>{{ $article.Description }}</div>
                <div><i>{{ formatDate $article.CreatedAt }}</i></div>
            </td>
        </tr>
    {{- end}}
</table>

<div align="right">

*Updated at: {{formatTime .Time}} - by **[huantt/article-listing](https://github.com/huantt/article-listing)***

</div>
