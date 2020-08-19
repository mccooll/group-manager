export default async function(url) {
	const res = await fetch("http://localhost:5000/" + url);
	return await res.json();
}