.class public Larb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/location/places/internal/PlaceImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/location/places/internal/PlaceImpl;Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lacq;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lacq;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->q()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lacq;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->s()Lcom/google/android/gms/location/places/internal/PlaceLocalization;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v4}, Lacq;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->f()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v4}, Lacq;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->g()F

    move-result v2

    invoke-static {p1, v1, v2}, Lacq;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->h()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v4}, Lacq;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lacq;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v4}, Lacq;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->m()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lacq;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->n()F

    move-result v2

    invoke-static {p1, v1, v2}, Lacq;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->o()I

    move-result v2

    invoke-static {p1, v1, v2}, Lacq;->a(Landroid/os/Parcel;II)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->p()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lacq;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lacq;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lacq;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lacq;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->l()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lacq;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lacq;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->a:I

    invoke-static {p1, v1, v2}, Lacq;->a(Landroid/os/Parcel;II)V

    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lacq;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl;->b:Z

    invoke-static {p1, v1, v2}, Lacq;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x14

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lacq;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, v0}, Lacq;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlaceImpl;
    .locals 27

    invoke-static/range {p1 .. p1}, Laco;->b(Landroid/os/Parcel;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Laco;->a(Landroid/os/Parcel;)I

    move-result v2

    invoke-static {v2}, Laco;->a(I)I

    move-result v26

    sparse-switch v26, :sswitch_data_0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->o(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v8

    goto :goto_0

    :sswitch_2
    sget-object v25, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->CREATOR:Lard;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v2, v1}, Laco;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/location/places/internal/PlaceLocalization;

    move-object/from16 v25, v2

    goto :goto_0

    :sswitch_3
    sget-object v14, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lasu;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v14}, Laco;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    move-object v14, v2

    goto :goto_0

    :sswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->j(Landroid/os/Parcel;I)F

    move-result v15

    goto :goto_0

    :sswitch_5
    sget-object v16, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Last;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v2, v1}, Laco;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v16, v2

    goto :goto_0

    :sswitch_6
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    goto :goto_0

    :sswitch_7
    sget-object v18, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Laco;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object/from16 v18, v2

    goto :goto_0

    :sswitch_8
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->c(Landroid/os/Parcel;I)Z

    move-result v19

    goto :goto_0

    :sswitch_9
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->j(Landroid/os/Parcel;I)F

    move-result v20

    goto :goto_0

    :sswitch_a
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->f(Landroid/os/Parcel;I)I

    move-result v21

    goto :goto_0

    :sswitch_b
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->h(Landroid/os/Parcel;I)J

    move-result-wide v22

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->y(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->z(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v13

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->f(Landroid/os/Parcel;I)I

    move-result v4

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->c(Landroid/os/Parcel;I)Z

    move-result v24

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Laco;->y(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v6

    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-eq v2, v3, :cond_1

    new-instance v2, Lacp;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Overread allowed size end="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v0}, Lacp;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v2

    :cond_1
    new-instance v3, Lcom/google/android/gms/location/places/internal/PlaceImpl;

    invoke-direct/range {v3 .. v25}, Lcom/google/android/gms/location/places/internal/PlaceImpl;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFIJZLcom/google/android/gms/location/places/internal/PlaceLocalization;)V

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_10
        0x11 -> :sswitch_f
        0x12 -> :sswitch_13
        0x13 -> :sswitch_12
        0x14 -> :sswitch_14
        0x3e8 -> :sswitch_11
    .end sparse-switch
.end method

.method public a(I)[Lcom/google/android/gms/location/places/internal/PlaceImpl;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/location/places/internal/PlaceImpl;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Larb;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlaceImpl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Larb;->a(I)[Lcom/google/android/gms/location/places/internal/PlaceImpl;

    move-result-object v0

    return-object v0
.end method
