<table>
	<thead>
		<tr>
			<th>Title</th>
			<th>Description</th>
			<th colspan='3'>Actions</th>
		</tr>
	</thead>

	<tbody>
		<% @articles.each do |article| %>
			<tr>
				<td><%= article.title %></td>
				<td><%= article.description %></td>
				<td><%= link_to 'Show', article_path(article) %></td>
				<td><%= link_to 'Edit', edit_article_path(article) %></td>
				<td><%= link_to 'Delete', article_path(article), method: :delete, data: { turbo_method: :delete } %></td>
			</tr>
		<% end %>
	</tbody>
</table>

<p><td><%= link_to 'Create an article', new_article_path %></td></p>
