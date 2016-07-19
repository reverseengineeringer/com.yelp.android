.class Lcom/bugsnag/android/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private final config:Lcom/bugsnag/android/Configuration;

.field private exception:Ljava/lang/Throwable;

.field private frames:[Ljava/lang/StackTraceElement;

.field private message:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bugsnag/android/Exceptions;->config:Lcom/bugsnag/android/Configuration;

    .line 24
    iput-object p2, p0, Lcom/bugsnag/android/Exceptions;->name:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/bugsnag/android/Exceptions;->message:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/bugsnag/android/Exceptions;->frames:[Ljava/lang/StackTraceElement;

    .line 27
    return-void
.end method

.method constructor <init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bugsnag/android/Exceptions;->config:Lcom/bugsnag/android/Configuration;

    .line 19
    iput-object p2, p0, Lcom/bugsnag/android/Exceptions;->exception:Ljava/lang/Throwable;

    .line 20
    return-void
.end method

.method private exceptionToStream(Lcom/bugsnag/android/JsonStream;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/bugsnag/android/Stacktrace;

    iget-object v1, p0, Lcom/bugsnag/android/Exceptions;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p4}, Lcom/bugsnag/android/Stacktrace;-><init>(Lcom/bugsnag/android/Configuration;[Ljava/lang/StackTraceElement;)V

    .line 48
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    .line 49
    const-string/jumbo v1, "errorClass"

    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 50
    const-string/jumbo v1, "message"

    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 51
    const-string/jumbo v1, "stacktrace"

    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 52
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    .line 53
    return-void
.end method


# virtual methods
.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 32
    iget-object v0, p0, Lcom/bugsnag/android/Exceptions;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/bugsnag/android/Exceptions;->exception:Ljava/lang/Throwable;

    .line 35
    :goto_0
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/bugsnag/android/Exceptions;->exceptionToStream(Lcom/bugsnag/android/JsonStream;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Exceptions;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/bugsnag/android/Exceptions;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/bugsnag/android/Exceptions;->frames:[Ljava/lang/StackTraceElement;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bugsnag/android/Exceptions;->exceptionToStream(Lcom/bugsnag/android/JsonStream;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    .line 44
    return-void
.end method
