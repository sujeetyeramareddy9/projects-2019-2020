.class Lcom/google/ads/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/b/r;

.field private final b:Landroid/webkit/WebView;

.field private final c:Ljava/util/LinkedList;

.field private final d:I

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/ads/g;


# direct methods
.method public constructor <init>(Lcom/google/ads/b/r;Landroid/webkit/WebView;Ljava/util/LinkedList;IZLjava/lang/String;Lcom/google/ads/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/b/q;->a:Lcom/google/ads/b/r;

    iput-object p2, p0, Lcom/google/ads/b/q;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/google/ads/b/q;->c:Ljava/util/LinkedList;

    iput p4, p0, Lcom/google/ads/b/q;->d:I

    iput-boolean p5, p0, Lcom/google/ads/b/q;->e:Z

    iput-object p6, p0, Lcom/google/ads/b/q;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/ads/b/q;->g:Lcom/google/ads/g;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/b/q;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/b/q;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/b/q;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/b/q;->a:Lcom/google/ads/b/r;

    iget-object v1, p0, Lcom/google/ads/b/q;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/r;->a(Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/google/ads/b/q;->a:Lcom/google/ads/b/r;

    iget v1, p0, Lcom/google/ads/b/q;->d:I

    invoke-virtual {v0, v1}, Lcom/google/ads/b/r;->a(I)V

    iget-object v0, p0, Lcom/google/ads/b/q;->a:Lcom/google/ads/b/r;

    iget-boolean v1, p0, Lcom/google/ads/b/q;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/b/r;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/b/q;->a:Lcom/google/ads/b/r;

    iget-object v1, p0, Lcom/google/ads/b/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/r;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/b/q;->g:Lcom/google/ads/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/b/q;->a:Lcom/google/ads/b/r;

    invoke-virtual {v0}, Lcom/google/ads/b/r;->h()Lcom/google/ads/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ar;->k:Lcom/google/ads/e/ae;

    invoke-virtual {v0}, Lcom/google/ads/e/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/x;

    iget-object v1, p0, Lcom/google/ads/b/q;->g:Lcom/google/ads/g;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/x;->b(Lcom/google/ads/g;)V

    iget-object v0, p0, Lcom/google/ads/b/q;->a:Lcom/google/ads/b/r;

    invoke-virtual {v0}, Lcom/google/ads/b/r;->k()Lcom/google/ads/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/b/q;->g:Lcom/google/ads/g;

    invoke-virtual {v0, v1}, Lcom/google/ads/b/c;->setAdSize(Lcom/google/ads/g;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/b/q;->a:Lcom/google/ads/b/r;

    invoke-virtual {v0}, Lcom/google/ads/b/r;->A()V

    return-void
.end method
