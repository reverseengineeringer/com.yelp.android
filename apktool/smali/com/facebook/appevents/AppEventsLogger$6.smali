.class final Lcom/facebook/appevents/AppEventsLogger$6;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLogger;->a(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger$d;ZLcom/facebook/appevents/AppEventsLogger$a;)Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

.field final synthetic b:Lcom/facebook/GraphRequest;

.field final synthetic c:Lcom/facebook/appevents/AppEventsLogger$d;

.field final synthetic d:Lcom/facebook/appevents/AppEventsLogger$a;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/AppEventsLogger$d;Lcom/facebook/appevents/AppEventsLogger$a;)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger$6;->a:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventsLogger$6;->b:Lcom/facebook/GraphRequest;

    iput-object p3, p0, Lcom/facebook/appevents/AppEventsLogger$6;->c:Lcom/facebook/appevents/AppEventsLogger$d;

    iput-object p4, p0, Lcom/facebook/appevents/AppEventsLogger$6;->d:Lcom/facebook/appevents/AppEventsLogger$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/GraphResponse;)V
    .locals 4

    .prologue
    .line 946
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$6;->a:Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$6;->b:Lcom/facebook/GraphRequest;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger$6;->c:Lcom/facebook/appevents/AppEventsLogger$d;

    iget-object v3, p0, Lcom/facebook/appevents/AppEventsLogger$6;->d:Lcom/facebook/appevents/AppEventsLogger$a;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/appevents/AppEventsLogger;->a(Lcom/facebook/appevents/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/AppEventsLogger$d;Lcom/facebook/appevents/AppEventsLogger$a;)V

    .line 947
    return-void
.end method
