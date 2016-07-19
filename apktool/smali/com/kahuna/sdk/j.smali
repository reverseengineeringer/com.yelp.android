.class public final Lcom/kahuna/sdk/j;
.super Lcom/kahuna/sdk/l;
.source "Kahuna.java"


# static fields
.field private static d:Lcom/kahuna/sdk/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/kahuna/sdk/j;

    invoke-direct {v0}, Lcom/kahuna/sdk/j;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/j;->d:Lcom/kahuna/sdk/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/kahuna/sdk/l;-><init>()V

    .line 62
    return-void
.end method

.method public static i()Lcom/kahuna/sdk/h;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/kahuna/sdk/j;->d:Lcom/kahuna/sdk/h;

    return-object v0
.end method
