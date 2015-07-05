.class public Lcom/yelp/android/webimageview/FileWritingInputStream;
.super Ljava/io/FilterInputStream;
.source "FileWritingInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# instance fields
.field final mFd:Ljava/io/FileDescriptor;

.field final mOutput:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 2

    .prologue
    const/16 v1, 0x1000

    .line 43
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    :try_start_0
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/webimageview/FileWritingInputStream;->mFd:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/yelp/android/webimageview/FileWritingInputStream;->mOutput:Ljava/io/OutputStream;

    .line 50
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string/jumbo v1, "Could not get file descriptor for given file."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/webimageview/FileWritingInputStream;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/webimageview/FileWritingInputStream;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/webimageview/FileWritingInputStream;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 81
    return-void
.end method

.method public mark(I)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 69
    if-ltz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/yelp/android/webimageview/FileWritingInputStream;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 72
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/yelp/android/webimageview/FileWritingInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 55
    if-ltz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/yelp/android/webimageview/FileWritingInputStream;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    :cond_0
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 3

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Reset not supported by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
