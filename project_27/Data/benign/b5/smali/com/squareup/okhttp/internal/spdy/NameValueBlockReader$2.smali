.class Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$2;
.super Ljava/util/zip/Inflater;
.source "NameValueBlockReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;-><init>(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$2;->this$0:Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;

    .line 47
    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public inflate([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 51
    .local v0, "result":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$2;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Spdy3;->DICTIONARY:[B

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$2;->setDictionary([B)V

    .line 53
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 55
    :cond_0
    return v0
.end method
