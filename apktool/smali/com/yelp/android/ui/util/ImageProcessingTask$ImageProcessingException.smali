.class public Lcom/yelp/android/ui/util/ImageProcessingTask$ImageProcessingException;
.super Ljava/io/IOException;
.source "ImageProcessingTask.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final mSource:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

.field final synthetic this$0:Lcom/yelp/android/ui/util/ImageProcessingTask;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/util/ImageProcessingTask;Ljava/lang/String;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yelp/android/ui/util/ImageProcessingTask$ImageProcessingException;->this$0:Lcom/yelp/android/ui/util/ImageProcessingTask;

    .line 42
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p3, p0, Lcom/yelp/android/ui/util/ImageProcessingTask$ImageProcessingException;->mSource:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 44
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    const-string/jumbo v0, "Type:%s Message:%s Source:%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "ImageProcessingTask"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ImageProcessingTask$ImageProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/yelp/android/ui/util/ImageProcessingTask$ImageProcessingException;->mSource:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
