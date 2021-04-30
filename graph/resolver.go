package graph

import (
	"context"
	"database/sql"
	"fmt"

	_ "github.com/go-sql-driver/mysql"
	"go_graphql/gqlgen/graph/models"
	"go_graphql/gqlgen/rdb"
)

// This file will not be regenerated automatically.
//
// It serves as dependency injection for your app, add any dependencies you require here.

var (
	db *sql.DB
	user = "root"
	pass = "root123"
	host = "localhost"
	port = "3306"
	name = "ekiapp"
)

// 簡単のため、ここでrdbのコネクションを取得する
func init () {
	dsnStr := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s", user, pass, host, port, name)
	conn, err := sql.Open("mysql", dsnStr)
	if err != nil {
		panic(err)
	}
	db = conn
}

type Resolver struct{}

func (r *Resolver) StationByCD(ctx context.Context, cd *int) (*models.Station, error) {
	station, err := rdb.StationByStationCd(db, *cd)
	if err != nil {
		return nil, err
	}

	return &models.Station{
		StationCd:       station.StationCd,
		StationName:     station.StationName,
		Address:         &station.Address.String,
	}, nil
}
