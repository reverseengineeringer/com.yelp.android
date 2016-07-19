.class Lcom/bugsnag/android/JsonStream;
.super Lcom/bugsnag/android/JsonWriter;
.source "JsonStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsnag/android/JsonStream$Streamable;
    }
.end annotation


# instance fields
.field private final out:Ljava/io/Writer;


# direct methods
.method constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/bugsnag/android/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 19
    iput-object p1, p0, Lcom/bugsnag/android/JsonStream;->out:Ljava/io/Writer;

    .line 20
    return-void
.end method


# virtual methods
.method public name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/bugsnag/android/JsonWriter;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 25
    return-object p0
.end method

.method public bridge synthetic name(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/Number;)Lcom/bugsnag/android/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/bugsnag/android/JsonStream;->nullValue()Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/bugsnag/android/JsonWriter;->value(Ljava/lang/Number;)Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    goto :goto_0
.end method

.method public value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/bugsnag/android/JsonStream;->nullValue()Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/bugsnag/android/JsonWriter;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    goto :goto_0
.end method

.method public value(Lcom/bugsnag/android/JsonStream$Streamable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface {p1, p0}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    .line 71
    return-void
.end method

.method public value(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-super {p0}, Lcom/bugsnag/android/JsonWriter;->flush()V

    .line 80
    const/4 v2, 0x0

    .line 82
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/bugsnag/android/JsonStream;->out:Ljava/io/Writer;

    invoke-static {v1, v0}, Lcom/bugsnag/android/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    invoke-static {v1}, Lcom/bugsnag/android/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 88
    iget-object v0, p0, Lcom/bugsnag/android/JsonStream;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 89
    return-void

    .line 85
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/bugsnag/android/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public value(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/bugsnag/android/JsonStream;->nullValue()Lcom/bugsnag/android/JsonWriter;

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-super {p0, v0}, Lcom/bugsnag/android/JsonWriter;->value(Z)Lcom/bugsnag/android/JsonWriter;

    goto :goto_0
.end method
