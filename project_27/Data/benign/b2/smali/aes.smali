.class public Laes;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lacq;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->a:I

    invoke-static {p1, v1, v2}, Lacq;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lacq;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->c:Ljava/util/ArrayList;

    invoke-static {p1, v1, v2, v3}, Lacq;->c(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, v0}, Lacq;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Laco;->b(Landroid/os/Parcel;)I

    move-result v3

    const/4 v2, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v3, :cond_0

    invoke-static {p1}, Laco;->a(Landroid/os/Parcel;)I

    move-result v4

    invoke-static {v4}, Laco;->a(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    invoke-static {p1, v4}, Laco;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v4}, Laco;->f(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v4}, Laco;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;->CREATOR:Laeq;

    invoke-static {p1, v4, v0}, Laco;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-eq v4, v3, :cond_1

    new-instance v0, Lacp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lacp;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v3, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(I)[Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Laes;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Laes;->a(I)[Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;

    move-result-object v0

    return-object v0
.end method
