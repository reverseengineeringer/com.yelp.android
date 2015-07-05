.class Lcom/yelp/android/ui/activities/t;
.super Ljava/lang/Object;
.source "ActivityConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/AppData;

.field final synthetic b:[Lcom/yelp/android/debug/Debug$ApiEndpoint;

.field final synthetic c:Lcom/yelp/android/ui/activities/ActivityConfig;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfig;Lcom/yelp/android/appdata/AppData;[Lcom/yelp/android/debug/Debug$ApiEndpoint;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/yelp/android/ui/activities/t;->c:Lcom/yelp/android/ui/activities/ActivityConfig;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/t;->a:Lcom/yelp/android/appdata/AppData;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/t;->b:[Lcom/yelp/android/debug/Debug$ApiEndpoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/t;->a:Lcom/yelp/android/appdata/AppData;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/t;->a:Lcom/yelp/android/appdata/AppData;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Landroid/content/Context;)V

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/t;->a:Lcom/yelp/android/appdata/AppData;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/t;->b:[Lcom/yelp/android/debug/Debug$ApiEndpoint;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/yelp/android/ui/activities/t;->c:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/ActivityConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/debug/Debug;->a(Lcom/yelp/android/debug/Debug$ApiEndpoint;Landroid/content/Context;)V

    .line 109
    invoke-static {}, Lcom/yelp/android/services/d;->a()V

    .line 110
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 111
    return-void
.end method
