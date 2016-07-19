.class Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;
.super Ljava/lang/Object;
.source "Breadcrumbs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bugsnag/android/Breadcrumbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Breadcrumb"
.end annotation


# instance fields
.field final message:Ljava/lang/String;

.field final timestamp:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/bugsnag/android/DateUtils;->toISO8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;->timestamp:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8c

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;->message:Ljava/lang/String;

    .line 19
    return-void
.end method
