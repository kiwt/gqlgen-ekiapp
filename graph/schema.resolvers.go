package graph

// This file will be automatically regenerated based on the schema, any resolver implementations
// will be copied through when generating and any unknown code will be moved to the end.

import (
	"context"
	"fmt"
	"go_graphql/gqlgen/graph/generated"
	"go_graphql/gqlgen/graph/model"
)

func (r *queryResolver) StationByName(ctx context.Context, stationName *string) ([]*model.Station, error) {
	panic(fmt.Errorf("not implemented"))
}

func (r *queryResolver) StationByCd(ctx context.Context, stationCd *int) (*model.Station, error) {
	panic(fmt.Errorf("not implemented"))
}

// Query returns generated.QueryResolver implementation.
func (r *Resolver) Query() generated.QueryResolver { return &queryResolver{r} }

type queryResolver struct{ *Resolver }
