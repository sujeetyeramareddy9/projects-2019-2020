.class public Larr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/location/places/PlaceRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/location/places/PlaceRequest;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lacq;->a(Landroid/os/Parcel;)I

    move-result v0

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->b:I

    invoke-static {p1, v1, v2}, Lacq;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceRequest;->a()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lacq;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceRequest;->b()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lacq;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceRequest;->c()I

    move-result v2

    invoke-static {p1, v1, v2}, Lacq;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceRequest;->d()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lacq;->a(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Lacq;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceRequest;
    .locals 10

    invoke-static {p1}, Laco;->b(Landroid/os/Parcel;)I

    move-result v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-wide v3, Lcom/google/android/gms/location/places/PlaceRequest;->a:J

    const/16 v5, 0x66

    const-wide v6, 0x7fffffffffffffffL

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v8, :cond_0

    invoke-static {p1}, Laco;->a(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Laco;->a(I)I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    invoke-static {p1, v0}, Laco;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    invoke-static {p1, v0}, Laco;->f(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :sswitch_1
    sget-object v2, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Larq;

    invoke-static {p1, v0, v2}, Laco;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceFilter;

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v0}, Laco;->h(Landroid/os/Parcel;I)J

    move-result-wide v3

    goto :goto_0

    :sswitch_3
    invoke-static {p1, v0}, Laco;->f(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_0

    :sswitch_4
    invoke-static {p1, v0}, Laco;->h(Landroid/os/Parcel;I)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v8, :cond_1

    new-instance v0, Lacp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lacp;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/places/PlaceRequest;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/places/PlaceRequest;-><init>(ILcom/google/android/gms/location/places/PlaceFilter;JIJ)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(I)[Lcom/google/android/gms/location/places/PlaceRequest;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/location/places/PlaceRequest;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Larr;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Larr;->a(I)[Lcom/google/android/gms/location/places/PlaceRequest;

    move-result-object v0

    return-object v0
.end method
