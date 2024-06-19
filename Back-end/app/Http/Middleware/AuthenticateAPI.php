<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Auth\Middleware\Authenticate as Middleware;

class AuthenticateAPI extends Middleware
{
    public function handle($request, Closure $next, ...$guards)
    {
        $this->authenticate($request, $guards);

        return $next($request);
    }

    protected function authenticate($request, array $guards)
    {
        if ($this->auth->guard('api')->guest()) {
            return response()->json(['message' => 'Unauthenticated'], 401);
        }

        return $this->auth->shouldUse('api');
    }
}

// $user = User::where('email', $this->input('email'))->first();
// $user->generateCode();
