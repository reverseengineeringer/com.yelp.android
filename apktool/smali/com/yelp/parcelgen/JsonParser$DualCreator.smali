.class public abstract Lcom/yelp/parcelgen/JsonParser$DualCreator;
.super Lcom/yelp/parcelgen/JsonParser;
.source "JsonParser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/parcelgen/JsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DualCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/parcelgen/JsonParser",
        "<TE;>;",
        "Landroid/os/Parcelable$Creator",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser;-><init>()V

    return-void
.end method
