.class public Lcom/google/android/gms/maps/model/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/maps/model/LatLng;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/bo;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/LatLng;->a()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/bo;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/bo;->a(Landroid/os/Parcel;ID)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->c:D

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/bo;->a(Landroid/os/Parcel;ID)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/bo;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 8

    const-wide/16 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ag;->b(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    move-wide v2, v4

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ag;->a(Landroid/os/Parcel;)I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ag;->a(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ag;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ag;->e(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ag;->g(Landroid/os/Parcel;I)D

    move-result-wide v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ag;->g(Landroid/os/Parcel;I)D

    move-result-wide v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-eq v6, v0, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ah;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ah;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(IDD)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(I)[Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/g;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/g;->a(I)[Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method
