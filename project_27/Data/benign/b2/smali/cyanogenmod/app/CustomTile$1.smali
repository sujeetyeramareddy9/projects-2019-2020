.class final Lcyanogenmod/app/CustomTile$1;
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
        "Lcyanogenmod/app/CustomTile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/app/CustomTile;
    .locals 1

    .prologue
    .line 872
    new-instance v0, Lcyanogenmod/app/CustomTile;

    invoke-direct {v0, p1}, Lcyanogenmod/app/CustomTile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 870
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/app/CustomTile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/app/CustomTile;
    .locals 1

    .prologue
    .line 877
    new-array v0, p1, [Lcyanogenmod/app/CustomTile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 870
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$1;->newArray(I)[Lcyanogenmod/app/CustomTile;

    move-result-object v0

    return-object v0
.end method
