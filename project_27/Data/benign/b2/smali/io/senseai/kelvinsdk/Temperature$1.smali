.class final Lio/senseai/kelvinsdk/Temperature$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lio/senseai/kelvinsdk/Temperature;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2045
    new-instance v0, Lio/senseai/kelvinsdk/Temperature;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/senseai/kelvinsdk/Temperature;-><init>(Landroid/os/Parcel;B)V

    .line 41
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    .line 1050
    new-array v0, p1, [Lio/senseai/kelvinsdk/Temperature;

    .line 41
    return-object v0
.end method
