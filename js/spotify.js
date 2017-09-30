const app = {};

app.apiUrl = 'https://api.spotify.com/v1'
app.apiAUrl = 'https://accounts.spotify.com'


//Authorize api
app.authorize = () => $.ajax({
    url: `${app.apiAUrl}/authorize`,
    client_id : '21da1691073e434687796eccdf01b06b',
    response_type: 'token',
    redirect_iri:'https://localhost'
});

//Allow the user to enter names 
app.events = function(){
    $('form').on('submit', function(e){
        e.preventDefault();
        let artists = $('input[type = search]').val();
        artists = artists.split(',');
        console.log(artists);
        let search = artists.map(artistName => app.searchArtist(artistName));
        console.log(search);
    });
};
//Go to spotify for arist
app.searchArtist = (artistName) => $.ajax({
    url: `${app.apiUrl}/search`,
    method: 'GET',
    dataType: 'json',
    data: {
        q:artistName,
        type: 'artist'
    }
});
//Get albulms

//Get tracks

//Get playlist
app.init = function(){
    $(app.authorize);
    $(app.events);
}

$(app.init);