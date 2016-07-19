.class Lcom/bugsnag/android/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private email:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/bugsnag/android/User;)V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p1, Lcom/bugsnag/android/User;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/bugsnag/android/User;->email:Ljava/lang/String;

    iget-object v2, p1, Lcom/bugsnag/android/User;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/bugsnag/android/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bugsnag/android/User;->id:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/bugsnag/android/User;->email:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/bugsnag/android/User;->name:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/bugsnag/android/User;->email:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/bugsnag/android/User;->id:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/bugsnag/android/User;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    .line 30
    iget-object v0, p0, Lcom/bugsnag/android/User;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 31
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/User;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/User;->email:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 35
    const-string/jumbo v0, "email"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/User;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/bugsnag/android/User;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 39
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/User;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 42
    :cond_2
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    .line 43
    return-void
.end method
