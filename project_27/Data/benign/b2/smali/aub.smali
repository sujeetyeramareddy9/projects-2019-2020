.class public final Laub;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lavm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Laub;->a:Ljava/lang/reflect/Field;

    .line 47
    return-void
.end method
