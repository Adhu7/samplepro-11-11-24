<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Artwork Submission</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<!-- Form Container -->
	<div class="container mt-5">
		<h2 class="mb-4">Artist Category</h2>

		<!-- Artwork Form -->
		<form action="artistCategoryAction.jsp" method="POST">

			<!-- Artist Name -->
			<div class="mb-3">
				<label for="artist-category" class="form-label">Artist
					Category</label> <input type="text" class="form-control"
					id="artist-category" name="artist-category">
			</div>

			<!-- Submit Button -->
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>

	<!-- Bootstrap JS & Popper.js -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
