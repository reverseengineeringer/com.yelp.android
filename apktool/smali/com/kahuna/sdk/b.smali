.class public Lcom/kahuna/sdk/b;
.super Ljava/lang/Object;
.source "BasicHeader.java"

# interfaces
.implements Lcom/kahuna/sdk/g;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/kahuna/sdk/b;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/kahuna/sdk/b;->b:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kahuna/sdk/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kahuna/sdk/b;->b:Ljava/lang/String;

    return-object v0
.end method
