.class public abstract enum Lavc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lavc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lavc;

.field public static final enum b:Lavc;

.field private static final synthetic c:[Lavc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lavd;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lavd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lavc;->a:Lavc;

    .line 45
    new-instance v0, Lave;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lave;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lavc;->b:Lavc;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lavc;

    sget-object v1, Lavc;->a:Lavc;

    aput-object v1, v0, v2

    sget-object v1, Lavc;->b:Lavc;

    aput-object v1, v0, v3

    sput-object v0, Lavc;->c:[Lavc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILavd;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lavc;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lavc;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lavc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lavc;

    return-object v0
.end method

.method public static values()[Lavc;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lavc;->c:[Lavc;

    invoke-virtual {v0}, [Lavc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lavc;

    return-object v0
.end method
