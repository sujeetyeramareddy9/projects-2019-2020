.class final Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcyanogenmod/app/ThemeVersion$ComponentVersion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 135
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    new-instance v0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    const/4 v1, 0x0

    sget-object v2, Lcyanogenmod/app/ThemeComponent;->OVERLAY:Lcyanogenmod/app/ThemeComponent;

    invoke-direct {v0, v1, v2, v4}, Lcyanogenmod/app/ThemeVersion$ComponentVersion;-><init>(ILcyanogenmod/app/ThemeComponent;I)V

    invoke-virtual {p0, v0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2$1;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    sget-object v1, Lcyanogenmod/app/ThemeComponent;->BOOT_ANIM:Lcyanogenmod/app/ThemeComponent;

    invoke-direct {v0, v3, v1, v3}, Lcyanogenmod/app/ThemeVersion$ComponentVersion;-><init>(ILcyanogenmod/app/ThemeComponent;I)V

    invoke-virtual {p0, v0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2$1;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    sget-object v1, Lcyanogenmod/app/ThemeComponent;->WALLPAPER:Lcyanogenmod/app/ThemeComponent;

    invoke-direct {v0, v4, v1, v3}, Lcyanogenmod/app/ThemeVersion$ComponentVersion;-><init>(ILcyanogenmod/app/ThemeComponent;I)V

    invoke-virtual {p0, v0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2$1;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    const/4 v1, 0x3

    sget-object v2, Lcyanogenmod/app/ThemeComponent;->LOCKSCREEN:Lcyanogenmod/app/ThemeComponent;

    invoke-direct {v0, v1, v2, v3}, Lcyanogenmod/app/ThemeVersion$ComponentVersion;-><init>(ILcyanogenmod/app/ThemeComponent;I)V

    invoke-virtual {p0, v0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2$1;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    const/4 v1, 0x4

    sget-object v2, Lcyanogenmod/app/ThemeComponent;->ICON:Lcyanogenmod/app/ThemeComponent;

    invoke-direct {v0, v1, v2, v3}, Lcyanogenmod/app/ThemeVersion$ComponentVersion;-><init>(ILcyanogenmod/app/ThemeComponent;I)V

    invoke-virtual {p0, v0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2$1;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    const/4 v1, 0x5

    sget-object v2, Lcyanogenmod/app/ThemeComponent;->FONT:Lcyanogenmod/app/ThemeComponent;

    invoke-direct {v0, v1, v2, v3}, Lcyanogenmod/app/ThemeVersion$ComponentVersion;-><init>(ILcyanogenmod/app/ThemeComponent;I)V

    invoke-virtual {p0, v0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2$1;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    const/4 v1, 0x6

    sget-object v2, Lcyanogenmod/app/ThemeComponent;->SOUND:Lcyanogenmod/app/ThemeComponent;

    invoke-direct {v0, v1, v2, v3}, Lcyanogenmod/app/ThemeVersion$ComponentVersion;-><init>(ILcyanogenmod/app/ThemeComponent;I)V

    invoke-virtual {p0, v0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2$1;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method
