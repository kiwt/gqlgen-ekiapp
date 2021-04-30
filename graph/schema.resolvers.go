package graph

// This file will be automatically regenerated based on the schema, any resolver implementations
// will be copied through when generating and any unknown code will be moved to the end.

import (
	"context"

	"go_graphql/gqlgen/graph/generated"
	"go_graphql/gqlgen/graph/models"
)

func (r *queryResolver) StationByCd(ctx context.Context, stationCd *int) (*models.Station, error) {
	return r.StationByCD(ctx, stationCd)
}

// Query returns generated.QueryResolver implementation.
func (r *Resolver) Query() generated.QueryResolver { return &queryResolver{r} }

type queryResolver struct{ *Resolver }
