.class public Lasl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/maps/model/internal/GroundOverlayOptionsParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/maps/model/internal/GroundOverlayOptionsParcelable;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lacq;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/GroundOverlayOptionsParcelable;->a()I

    move-result v2

    invoke-static {p1, v1, v2}, Lacq;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/GroundOverlayOptionsParcelable;->b()Lcom/google/android/gms/maps/model/internal/BitmapDescriptorParcelable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lacq;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lacq;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/internal/GroundOverlayOptionsParcelable;
    .locals 5

    invoke-static {p1}, Laco;->b(Landroid/os/Parcel;)I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-static {p1}, Laco;->a(Landroid/os/Parcel;)I

    move-result v3

    invoke-static {v3}, Laco;->a(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-static {p1, v3}, Laco;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v3}, Laco;->f(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/maps/model/internal/BitmapDescriptorParcelable;->CREATOR:Lasj;

    invoke-static {p1, v3, v0}, Laco;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/internal/BitmapDescriptorParcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-eq v3, v2, :cond_1

    new-instance v0, Lacp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overread allowed size end="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lacp;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v2, Lcom/google/android/gms/maps/model/internal/GroundOverlayOptionsParcelable;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/maps/model/internal/GroundOverlayOptionsParcelable;-><init>(ILcom/google/android/gms/maps/model/internal/BitmapDescriptorParcelable;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(I)[Lcom/google/android/gms/maps/model/internal/GroundOverlayOptionsParcelable;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/maps/model/internal/GroundOverlayOptionsParcelable;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lasl;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/internal/GroundOverlayOptionsParcelable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lasl;->a(I)[Lcom/google/android/gms/maps/model/internal/GroundOverlayOptionsParcelable;

    move-result-object v0

    return-object v0
.end method