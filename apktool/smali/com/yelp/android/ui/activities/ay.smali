.class Lcom/yelp/android/ui/activities/ay;
.super Ljava/lang/Object;
.source "ActivityConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[Lcom/yelp/android/debug/Debug$MockLocation;

.field final synthetic b:Lcom/yelp/android/ui/activities/ActivityConfig;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfig;[Lcom/yelp/android/debug/Debug$MockLocation;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ay;->b:Lcom/yelp/android/ui/activities/ActivityConfig;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/ay;->a:[Lcom/yelp/android/debug/Debug$MockLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 195
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "gps"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "network"

    aput-object v2, v1, v0

    .line 199
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 201
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ay;->b:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-static {v2, v1, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->a(Lcom/yelp/android/ui/activities/ActivityConfig;[Ljava/lang/String;Landroid/location/Location;)Z

    .line 202
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ay;->a:[Lcom/yelp/android/debug/Debug$MockLocation;

    add-int/lit8 v2, p2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/yelp/android/debug/Debug$MockLocation;->getLoc()Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method
