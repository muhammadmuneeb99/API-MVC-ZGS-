
using System.Data.Common;

using API_MVC__ZGS_.DTO;

using MySqlConnector;

namespace API_MVC__ZGS_.Repository;

public class PlayerRepository(MySqlDataSource database)
{

	public async Task<IReadOnlyList<BowlersWicketsDto>> GetBowlerWicketDetails()
	{
		using var connection = await database.OpenConnectionAsync();
		using var command = connection.CreateCommand();
		command.CommandText = @"SELECT `topodiwickettaker`.`PlayerName`, `topodiwickettaker`.`NumberOfWickets` FROM `testdemo`.`topodiwickettaker`;";
		return await ReadAllBowlersWicketsAsync(await command.ExecuteReaderAsync());
	}

	public async Task<IReadOnlyList<BatsmanRatingDto>> GetBatsmanRatingDetails()
	{
		using var connection = await database.OpenConnectionAsync();
		using var command = connection.CreateCommand();
		command.CommandText = @"SELECT `topodibatsman`.`batsManName`, `topodibatsman`.`Rating` FROM `testdemo`.`topodibatsman`;";
		return await ReadAllBatsmanRatingAsync(await command.ExecuteReaderAsync());
	}

	private async Task<IReadOnlyList<BowlersWicketsDto>> ReadAllBowlersWicketsAsync(DbDataReader reader)
	{
		using (reader)
		{
			var records = new List<BowlersWicketsDto>();
			while (await reader.ReadAsync())
			{
				var data = new BowlersWicketsDto
				{
					//id = reader.GetInt32(0),
					PlayerName = reader.GetString(0),
					NumberOfWickets = reader.GetInt32(1),
				};
				records.Add(data);
			}
			return records;
		}
	}

	private async Task<IReadOnlyList<BatsmanRatingDto>> ReadAllBatsmanRatingAsync(DbDataReader reader)
	{
		using (reader)
		{
			var records = new List<BatsmanRatingDto>();
			while (await reader.ReadAsync())
			{
				var data = new BatsmanRatingDto
				{
					//id = reader.GetInt32(0),
					batsManName = reader.GetString(0),
					Rating = reader.GetInt32(1),
				};
				records.Add(data);
			}
			return records;
		}
	}
}

