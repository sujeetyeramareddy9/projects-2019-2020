.class Lblj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbea;

.field final synthetic b:Lblp;

.field final synthetic c:Lble;


# direct methods
.method constructor <init>(Lble;Lbea;Lblp;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lblj;->c:Lble;

    iput-object p2, p0, Lblj;->a:Lbea;

    iput-object p3, p0, Lblj;->b:Lblp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lblj;->c:Lble;

    iget-object v1, p0, Lblj;->a:Lbea;

    iget-object v2, p0, Lblj;->b:Lblp;

    invoke-virtual {v0, v1, v2}, Lble;->b(Lbea;Lblp;)V

    .line 371
    return-void
.end method
