.class final Lcyanogenmod/app/Profile$ProfileTrigger$1;
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
        "Lcyanogenmod/app/Profile$ProfileTrigger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/app/Profile$ProfileTrigger;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Lcyanogenmod/app/Profile$ProfileTrigger;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcyanogenmod/app/Profile$ProfileTrigger;-><init>(Landroid/os/Parcel;Lcyanogenmod/app/Profile$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcyanogenmod/app/Profile$ProfileTrigger$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/app/Profile$ProfileTrigger;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/app/Profile$ProfileTrigger;
    .locals 1

    .prologue
    .line 335
    new-array v0, p1, [Lcyanogenmod/app/Profile$ProfileTrigger;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcyanogenmod/app/Profile$ProfileTrigger$1;->newArray(I)[Lcyanogenmod/app/Profile$ProfileTrigger;

    move-result-object v0

    return-object v0
.end method
