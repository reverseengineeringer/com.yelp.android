.class public interface abstract Lcom/ooyala/android/AuthorizableItem;
.super Ljava/lang/Object;
.source "AuthorizableItem.java"


# static fields
.field public static final authCodeDescription:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "authorized"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "unauthorized parent"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "unauthorized domain"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "unauthorized location"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "current time is before the flight start time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "current time is after the flight end time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "current time is outside any availability period"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "this is not a recognized embed code"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "invalid signature"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "missing parameters"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "missing rule set"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "unauthorized"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "missing pcode"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "unauthorized device"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "invalid token"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "movie expired"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "unauthorized multi-synd group"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "This provider was deleted"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "Too many open videos. Close other videos on this account and try again in a few minutes"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "Missing Account ID"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "No Entitlements Found"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "Non-entitled Device"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "Non-registered Device"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "unauthorized"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ooyala/android/AuthorizableItem;->authCodeDescription:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getAuthCode()I
.end method

.method public abstract isAuthorized()Z
.end method
