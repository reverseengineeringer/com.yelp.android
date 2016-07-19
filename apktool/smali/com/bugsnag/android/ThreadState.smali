.class Lcom/bugsnag/android/ThreadState;
.super Ljava/lang/Object;
.source "ThreadState.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field final config:Lcom/bugsnag/android/Configuration;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Configuration;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bugsnag/android/ThreadState;->config:Lcom/bugsnag/android/Configuration;

    .line 18
    return-void
.end method


# virtual methods
.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    .line 22
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v3

    .line 24
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 25
    new-instance v0, Lcom/bugsnag/android/ThreadState$1;

    invoke-direct {v0, p0}, Lcom/bugsnag/android/ThreadState$1;-><init>(Lcom/bugsnag/android/ThreadState;)V

    invoke-static {v6, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 31
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 32
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v6

    if-ge v2, v0, :cond_1

    .line 33
    aget-object v0, v6, v2

    check-cast v0, Ljava/lang/Thread;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-eqz v1, :cond_0

    .line 38
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    .line 40
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    .line 41
    const-string/jumbo v7, "id"

    invoke-virtual {p1, v7}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bugsnag/android/JsonStream;->value(J)Lcom/bugsnag/android/JsonWriter;

    .line 42
    const-string/jumbo v7, "name"

    invoke-virtual {p1, v7}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 43
    const-string/jumbo v0, "stacktrace"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    new-instance v7, Lcom/bugsnag/android/Stacktrace;

    iget-object v8, p0, Lcom/bugsnag/android/ThreadState;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v7, v8, v1}, Lcom/bugsnag/android/Stacktrace;-><init>(Lcom/bugsnag/android/Configuration;[Ljava/lang/StackTraceElement;)V

    invoke-virtual {v0, v7}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 44
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    .line 32
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    .line 48
    return-void
.end method
