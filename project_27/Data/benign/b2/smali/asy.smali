.class public Lasy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lacq;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->a()I

    move-result v2

    invoke-static {p1, v1, v2}, Lacq;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->a:F

    invoke-static {p1, v1, v2}, Lacq;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->b:F

    invoke-static {p1, v1, v2}, Lacq;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->c:F

    invoke-static {p1, v1, v2}, Lacq;->a(Landroid/os/Parcel;IF)V

    invoke-static {p1, v0}, Lacq;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1}, Laco;->b(Landroid/os/Parcel;)I

    move-result v4

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v4, :cond_0

    invoke-static {p1}, Laco;->a(Landroid/os/Parcel;)I

    move-result v5

    invoke-static {v5}, Laco;->a(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    invoke-static {p1, v5}, Laco;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v5}, Laco;->f(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v5}, Laco;->j(Landroid/os/Parcel;I)F

    move-result v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v5}, Laco;->j(Landroid/os/Parcel;I)F

    move-result v1

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v5}, Laco;->j(Landroid/os/Parcel;I)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-eq v5, v4, :cond_1

    new-instance v0, Lacp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lacp;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v4, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;-><init>(IFFF)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(I)[Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lasy;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lasy;->a(I)[Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v0

    return-object v0
.end method
